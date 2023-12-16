<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ClassAcknowledge extends Model
{
    use HasFactory;

    protected $table = 'class_ack';

    protected $fillable =['students_id','lessons_id', 'courses_id'];

   
}
