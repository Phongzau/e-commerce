<?php

namespace App\DataTables;

use App\Models\Category;
use Yajra\DataTables\Html\Button;
use Yajra\DataTables\Html\Column;
use Yajra\DataTables\Services\DataTable;
use Yajra\DataTables\Html\Editor\Fields;
use Yajra\DataTables\Html\Editor\Editor;
use Illuminate\Database\Eloquent\Builder as QueryBuilder;
use Yajra\DataTables\EloquentDataTable;
use Yajra\DataTables\Html\Builder as HtmlBuilder;

class CategoryDataTable extends DataTable
{
    /**
     * Build the DataTable class.
     *
     * @param QueryBuilder $query Results from query() method.
     */
    public function dataTable(QueryBuilder $query): EloquentDataTable
    {
        return (new EloquentDataTable($query))
            ->addColumn('action', function ($query) {
                $editBtn = "<a class='btn btn-primary' href='" . route('admin.category.edit', $query->id) . "'><i class='far fa-edit'></i></a>";
                $deleteBtn = "<a class='btn btn-danger ml-2 delete-item' href='" . route('admin.category.destroy', $query->id) . "' ><i class='far fa-trash-alt'></i></a>";
                return $editBtn . $deleteBtn;
            })
            ->addColumn('icon', function ($query) {
                return $icon = "<i style='font-size:45px' class='$query->icon'><i>";
            })
            ->addColumn('status', function ($query) {
                if ($query->status == 1) {
                    $button = "<label class='custom-switch mt-2'>
                        <input type='checkbox' data-id='" . $query->id . "' checked name='custom-switch-checkbox' class='custom-switch-input change-status'>
                        <span class='custom-switch-indicator'></span>
                      </label>";
                } else {
                    $button = "<label class='custom-switch mt-2'>
                        <input type='checkbox' data-id='" . $query->id . "' name='custom-switch-checkbox' class='custom-switch-input change-status'>
                        <span class='custom-switch-indicator'></span>
                      </label>";
                }

                return $button;
            })
            ->rawColumns(['action', 'status', 'icon'])
            ->setRowId('id');
    }

    /**
     * Get the query source of dataTable.
     */
    public function query(Category $model): QueryBuilder
    {
        return $model->newQuery();
    }

    /**
     * Optional method if you want to use the html builder.
     */
    public function html(): HtmlBuilder
    {
        return $this->builder()
            ->setTableId('category-table')
            ->columns($this->getColumns())
            ->minifiedAjax()
            //->dom('Bfrtip')
            ->orderBy(0)
            ->selectStyleSingle()
            ->buttons([
                Button::make('excel'),
                Button::make('csv'),
                Button::make('pdf'),
                Button::make('print'),
                Button::make('reset'),
                Button::make('reload')
            ]);
    }

    /**
     * Get the dataTable columns definition.
     */
    public function getColumns(): array
    {
        return [
            Column::make('id')->width(70),
            Column::make('icon')->width(300),
            Column::make('name')->width(200),
            Column::make('status')->width(100),
            Column::computed('action')
                ->exportable(false)
                ->printable(false)
                ->width(100)
                ->addClass('text-center'),
        ];
    }

    /**
     * Get the filename for export.
     */
    protected function filename(): string
    {
        return 'Category_' . date('YmdHis');
    }
}
