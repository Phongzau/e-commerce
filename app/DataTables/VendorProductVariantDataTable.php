<?php

namespace App\DataTables;

use App\Models\ProductVariant;
use App\Models\VendorProductVariant;
use Illuminate\Database\Eloquent\Builder as QueryBuilder;
use Yajra\DataTables\EloquentDataTable;
use Yajra\DataTables\Html\Builder as HtmlBuilder;
use Yajra\DataTables\Html\Button;
use Yajra\DataTables\Html\Column;
use Yajra\DataTables\Html\Editor\Editor;
use Yajra\DataTables\Html\Editor\Fields;
use Yajra\DataTables\Services\DataTable;

class VendorProductVariantDataTable extends DataTable
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
                $variantItem = "<a class='btn btn-info me-1' href='" . route('vendor.product-variant-item.index', ['product_id' => request()->product_id, 'variant_id' => $query->id]) . "'><i class='far fa-edit me-1'></i>Variant Items</a>";
                $editBtn = "<a class='btn btn-primary me-1' href='" . route('vendor.product-variant.edit', $query->id) . "'><i class='far fa-edit'></i></a>";
                $deleteBtn = "<a class='btn btn-danger delete-item ml-2' href='" . route('vendor.product-variant.destroy', $query->id) . "'><i class='far fa-trash-alt'></i></a>";
                return $variantItem . $editBtn . $deleteBtn;
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
            ->rawColumns(['action', 'status'])
            ->setRowId('id');
    }

    /**
     * Get the query source of dataTable.
     */
    public function query(ProductVariant $model): QueryBuilder
    {
        return $model->where('product_id', request()->product_id)->newQuery();
    }

    /**
     * Optional method if you want to use the html builder.
     */
    public function html(): HtmlBuilder
    {
        return $this->builder()
            ->setTableId('vendorproductvariant-table')
            ->columns($this->getColumns())
            ->minifiedAjax()
            //->dom('Bfrtip')
            ->orderBy(0)
            ->selectStyleSingle()
            ->buttons([Button::make('excel'), Button::make('csv'), Button::make('pdf'), Button::make('print'), Button::make('reset'), Button::make('reload')]);
    }

    /**
     * Get the dataTable columns definition.
     */
    public function getColumns(): array
    {
        return [Column::make('id'), Column::make('name'), Column::make('status'), Column::computed('action')->exportable(false)->printable(false)->width(350)->addClass('text-center')];
    }

    /**
     * Get the filename for export.
     */
    protected function filename(): string
    {
        return 'VendorProductVariant_' . date('YmdHis');
    }
}
