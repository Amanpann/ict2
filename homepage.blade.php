@extends('Layoutadm')
@section('title','Dashboard')

@section("container")
        <!-- Main content -->
        <section class="content">
          <h1 style="background-color:#00b7ff;color:white;text-align:center;padding:16px;border-radius:20px;">
        Welcome to {{env("APPLICATION_NAME")}} Admin Panel </h1>
       <x-Admin.Userstats />
     <!-- general form elements disabled -->
 
    

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
@endsection