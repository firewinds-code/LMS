<?php
use Illuminate\Support\Facades\DB;
use App\ClassAcknowledge;

         function classAckTestOpen($courseId)
         { 
           $classAck = DB::select("select count(*) as count from class_ack where is_acknowledge = 0 and courses_id = $courseId group by students_id , courses_id");
           $class = (!empty($classAck)) ? $classAck[0]->count : 0;
           return $class;
         }


        function classTestOpen($testid,$studentid)
         { 
           $classAck = DB::select("select course_id, count(*) as count from course_test where test_id = $testid group by test_id");
           if(!empty($classAck))
           {
            $courseId = (!empty($classAck)) ? $classAck[0]->course_id : 0;
            $classAck = DB::select("select count(*) as count from class_ack where is_acknowledge = 0 and students_id = $studentid and courses_id = $courseId group by students_id , courses_id");
            return $class = (!empty($classAck)) ? $classAck[0]->count : 0;
           }
          
           return 0;
         }

         function checkClassOnline($sessionid)
         {
            $classtype = DB::select("select type from courses where id = $sessionid");
            if(!empty($classtype))
            {
              return $type = (!empty($classtype)) ? $classtype[0]->type : '';
            }
                  return 0;
          }

          function classSelected($courseId,$classId)
          { 
            $condition =  ClassAcknowledge::where(function($query) use ($courseId, $classId){
              $query->where('lessons_id', $classId)->where('courses_id', $courseId);

            })->exists();
            return $condition;
          }


           function courseId($testId)
           {
              $row =  DB::table('course_test')->where('test_id',$testId)->first();
              if(isset($row))
              {
                $courseType = DB::table('courses')->where('id',$row->course_id)->first();
                if(isset($courseType))
                {
                   return ['courseType' => $courseType->type,
                   'courseId' => $row->course_id];
                }
              }else{

                return ['courseType' => '',
                   'courseId' => ''];
              }
           }
          