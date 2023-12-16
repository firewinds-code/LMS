<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class IsEnroll extends Model
{
    use HasFactory;

    protected $table = 'student_courses';
}
