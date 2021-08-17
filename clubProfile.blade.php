<!DOCTYPE html>

<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- <link rel="stylesheet" href=""> -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet"
        id="bootstrap-css">
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>


</head>

<body>
    <hr>
    <div class="container bootstrap snippet">
        <div class="row">
            <div class="col-sm-2"><a href="/" class="btn btn-primary"> Home </a></div>
            <div class="col-sm-2">
                @if(session()->get('loginid'))
                <a href="/Login" class="btn btn-primary"> Dashboard </a>
                @endif
            </div>
            <div class="col-sm-6">
            </div>
            <div class="col-sm-2 pull-right ">
                <h1>{{'@'.$profile[0]->username}}</h1>
            </div>

        </div>
        <div class="row">
            <div class="col-sm-3">
                <!--left col-->


                <div class="text-center">
                    <img src="/Clubs/{{$profile[0]->club_logo}}" class="avatar img-circle img-thumbnail"
                        alt="avatar">

                </div>
                </hr><br>


                <div class="panel panel-default">
                    <div class="panel-heading">Overall <i class="fa fa-link fa-1x"></i></div>

                </div>


                <ul class="list-group">
                    <li class="list-group-item text-muted">Activity <i class="fa fa-dashboard fa-1x"></i></li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>Cups won</strong></span>
                        {{$profile[0]->cups_won}}
                    </li>

                </ul>



            </div>
            <!--/col-3-->
            <div class="col-sm-9">
                <ul class="nav nav-tabs">


                </ul>


                <div class="tab-content">
                    <div class="tab-pane active" id="home">
                        <hr>

                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="first_name">
                                    <h4>First name</h4>
                                </label>
                                <p style="font-weight:bold;">{{$profile[0]->firstname}} </p>
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="last_name">
                                    <h4>Last name</h4>
                                </label>
                                <p style="font-weight:bold;">{{$profile[0]->lastname}} </p>
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="phone">
                                    <h4>Gencat</h4>
                                </label>
                                <p> {{$profile[0]->gencat}} </p>
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="phone">
                                    <h4> Founded</h4>
                                </label>
                                <p>{{$profile[0]->date_founded}} </p>
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="phone">
                                    <h4> Bio</h4>
                                </label>
                                <p>{{ $personal ? $personal->bio: '' }}</p>
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="phone">
                                    <h4> Description</h4>
                                </label>
                                <p>{{ $personal ? $personal->description: '' }}</p>
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="phone">
                                    <h4> Address</h4>
                                </label>
                                <p>{{ $personal ? $personal->address: '' }}</p>
                            </div>
                        </div>

                      
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="phone">
                                    <h4>Phone</h4>
                                </label>
                                <p>{{ $personal ? $personal->phone: '' }} </p>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="mobile">
                                    <h4>Mobile</h4>
                                </label>
                                <p>{{ $personal ? $personal->mobile: '' }} </p>
                            </div>
                        </div>

                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="email">
                                    <h4>Email</h4>
                                </label>
                                <p> {{ $personal ? $personal->email: '' }}" </p>
                            </div>
                        </div>




                        <hr>

                    </div>
                    <!--/tab-pane-->



                </div>
                <!--/col-9-->
            </div>
            <p style="padding:16px;text-align:center;"> All right reserved to MIT Student. </p>
            <!--/row-->
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>


            <script>
            $(document).ready(function() {


                var readURL = function(input) {
                    if (input.files && input.files[0]) {
                        var reader = new FileReader();

                        reader.onload = function(e) {
                            $('.avatar').attr('src', e.target.result);
                        }

                        reader.readAsDataURL(input.files[0]);
                    }
                }


                $(".file-upload").on('change', function() {
                    readURL(this);
                });
            });
            </script>
</body>

</html>