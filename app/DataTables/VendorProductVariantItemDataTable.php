<?php

namespace App\DataTables;

use App\Models\ProductVariantItem;
use App\Models\VendorProductVariantItem;
use Yajra\DataTables\Html\Button;
use Yajra\DataTables\Html\Column;
use Yajra\DataTables\Services\DataTable;
use Yajra\DataTables\Html\Editor\Fields;
use Yajra\DataTables\Html\Editor\Editor;
use Illuminate\Database\Eloquent\Builder as QueryBuilder;
use Yajra\DataTables\EloquentDataTable;
use Yajra\DataTables\Html\Builder as HtmlBuilder;

class VendorProductVariantItemDataTable extends DataTable
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
                $editBtn = "<a class='btn btn-primary me-1' href='" . route('vendor.product-variant-item.edit', $query->id) . "'><i class='far fa-edit'></i></a>";
                $deleteBtn = "<a class='btn btn-danger ml-2 delete-item' href='" . route('vendor.product-variant-item.destroy', $query->id) . "'><i class='far fa-trash-alt'></i></a>";
                return $editBtn . $deleteBtn;
            })
            ->addColumn('variant_name', function ($query) {
                return $query->productVariant->name;
            })
            ->addColumn('status', function ($query) {
                if ($query->status == 1) {
                    $button =
                        "<div class='form-check form-switch'>
                    <input data-id='" .
                        $query->id .
                        "' checked class='form-check-input change-status' type='checkbox' id='flexSwitchCheckDefault'>
                    </div>";
                } else {
                    $button =
                        "<div class='form-check form-switch'>
                    <input data-id='" .
                        $query->id .
                        "' class='form-check-input change-status' type='checkbox' id='flexSwitchCheckDefault'>
                    </div>";
                }

                return $button;
            })
            ->addColumn('is_default', function ($query) {
                if ($query->is_default == 1) {
                    return "<i class='badge bg-success'>Default</i>";
                } else {
                    return "<i class='badge bg-danger'>No</i>";
                }
            })
            ->rawColumns(['action', 'status', 'is_default'])
            ->setRowId('id');
    }

    /**
     * Get the query source of dataTable.
     */
    public function query(ProductVariantItem $model): QueryBuilder
    {
        return $model->where('product_variant_id', request()->variant_id)->newQuery();
    }

    /**
     * Optional method if you want to use the html builder.
     */
    public function html(): HtmlBuilder
    {
        return $this->builder()
            ->setTableId('vendorproductvariantitem-table')
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
            Column::make('id')->width(100),
            Column::make('name'),
            Column::make('variant_name'),
            Column::make('price'),
            Column::make('is_default'),
            Column::make('status'),
            Column::computed('action')
                ->exportable(false)
                ->printable(false)
                ->width(200)
                ->addClass('text-center'),
        ];
    }

    /**
     * Get the filename for export.
     */
    protected function filename(): string
    {
        return 'VendorProductVariantItem_' . date('YmdHis');
    }
}
