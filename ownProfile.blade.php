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
            <div class="col-sm-10">
                <h1>{{'@'.$profile[0]->username}}</h1>
            </div>
            <div class="col-sm-2"><a href="/dash-board-admin" class="pull-right btn btn-primary"> Dashboard </a></div>
        </div>
        <div class="row">
            <div class="col-sm-3">
                <!--left col-->
                <form class="form" action="{{route('update.clubProfile')}}" method="post" id="registrationForm"
                    enctype="multipart/form-data">
                    {{csrf_field()}}
                    <div class="text-center">
                        <img src="Clubs/{{$profile[0]->club_logo}}" class="avatar img-circle img-thumbnail"
                            alt="avatar">
                        <h6>Upload a different photo...</h6>
                        <input type="hidden" name="usercat" value="1"/> 
                        <input type="hidden" name="id" value="{{$profile[0]->userid}}"/> 
                        <input type="checkbox" name="imagerequired" class="checkbox"/> Change
                        <input type="file" class="text-center center-block file-upload" name="coachpic">
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
                    <li class="active"><a data-toggle="tab" href="#home">Home</a></li>

                </ul>


                <div class="tab-content">
                    <div class="tab-pane active" id="home">
                        <hr>

                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="first_name">
                                    <h4>First name</h4>
                                </label>
                                <input type="text" class="form-control" name="first_name" id="first_name"
                                    placeholder="first name" title="enter your first name if any."
                                    value="{{$profile[0]->firstname}}">
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="last_name">
                                    <h4>Last name</h4>
                                </label>
                                <input type="text" class="form-control" name="last_name" id="last_name"
                                    placeholder="last name" title="enter your last name if any."
                                    value="{{$profile[0]->lastname}}">
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="phone">
                                    <h4>Gencat</h4>
                                </label>
                                <input type="text" class="form-control" name="gencat" id="gencat"
                                    value="{{$profile[0]->gencat}}" readonly>
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="phone">
                                    <h4> Founded</h4>
                                </label>
                                <input type="date" class="form-control" name="DOB" id="DOB"
                                    value="{{$profile[0]->date_founded}}">
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="phone">
                                    <h4> Bio</h4>
                                </label>
                                <textarea class="form-control" name="bio" id="bio">{{ $personal ? $personal->bio: '' }}</textarea>
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="phone">
                                    <h4> Description</h4>
                                </label>
                                <textarea type="date" class="form-control" name="Description"
                                    id="Description">{{ $personal ? $personal->description: '' }}</textarea>
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="phone">
                                    <h4> Address</h4>
                                </label>
                                <textarea type="date" class="form-control" name="address" id="address">{{ $personal ? $personal->address: '' }}</textarea>
                            </div>
                        </div>

                     
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="phone">
                                    <h4>Phone</h4>
                                </label>
                                <input type="text" class="form-control" name="phone" id="phone"
                                    placeholder="enter phone" title="enter your phone number if any." value="{{ $personal ? $personal->phone: '' }}">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="mobile">
                                    <h4>Mobile</h4>
                                </label>
                                <input type="text" class="form-control" name="mobile" id="mobile"
                                    placeholder="enter mobile number" title="enter your mobile number if any." value="{{ $personal ? $personal->mobile: '' }}">
                            </div>
                        </div>

                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="email">
                                    <h4>Email</h4>
                                </label>
                                <input type="email" class="form-control" name="email" id="email"
                                    placeholder="you@email.com" title="enter your email." value="{{ $personal ? $personal->email: '' }}">
                            </div>
                        </div>


                        <div class="form-group">
                            <div class="col-xs-12">
                                <br>
                                <button class="btn btn-lg btn-success" type="submit"><i
                                        class="glyphicon glyphicon-ok-sign"></i> Save</button>
                                
                            </div>
                        </div>
                        </form>

                        <hr>

                    </div>
                    <!--/tab-pane-->



                </div>
                <!--/col-9-->
            </div>
            <!--/row-->
            <p style="padding:16px;text-align:center;"> All right reserved to MIT Student. </p>
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