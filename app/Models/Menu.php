<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    use HasFactory;

    protected $fillable = [
        'menu_name',
        'price',
        'description',
        'stock',
    ];

    protected $appends = [
        'price_rp',
    ];

    public function getPriceRpAttribute()
    {
        return 'Rp ' . number_format($this->price, 0,'.','.');
    }

    public function scopeSearch($query)
    {
        if (request('search')) {
            return $query->where('menu_name', 'like', '%' . request('search') . '%')
                        ->orWhere('price', 'like', '%' . request('search') . '%')
                        ->orWhere('description', 'like', '%' . request('search') . '%')
                        ->orWhere('stock', 'like', '%' . request('search') . '%');
        }
    }

    // public function transaction()
    // {
    //     return $this->hasMany(Transaction::class);
    // }
}
