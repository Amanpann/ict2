<x-Header />
<x-Preloader />
<x-Headernav2 />
<div class="container-fluid" style="margin-top:150px;padding:16px;">
    <h2> Pages </h2>
    <br />
    <table id="player1" class="table table-bordered table-striped">
        <thead>
            <tr>

                <th>ID </th>
                <th> Title</th>
                <th> View </th>
                <th> Type </th>
                <th> Edit</th>
                <th>Delete </th>
            </tr>
        </thead>
        <tbody>

            @foreach($pages as $page)
            <tr>
                <td> {{$page->id}}</td>
                <td>{{$page->Title}} </td>
                <td><a href="/info/{{$page->Pagename}}" target="_blank">{{$page->Title}} </a></td>
                <td>
                    {{$Cat_type["$page->Posttype"]}}

                </td>
                <td><a href="/edit-news-club/{{$page->id}}" class="btn btn-primary"> Edit </a></td>
                <td><a href="/delete-news-club/{{$page->id}}" class="btn btn-danger"> Delete </a></td>
            </tr>

            @endforeach

        </tbody>
        <tfoot>

            <tr>
                <th>ID </th>
                <th> Title</th>
                <th> View </th>
                <th> Type </th>
                <th> Edit</th>
                <th>Delete </th>
            </tr>

        </tfoot>
    </table>
</div>

<x-Footer />
<x-Footerfile />