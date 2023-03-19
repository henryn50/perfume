@extends('layouts.admin')
@section('content')
    <div class="row">
        <div class="col-md-12 grid-margin">
            <div class="card">
                <div class="card-header">
                    <h4>Add category
                        <a href="{{ url('admin/category') }}" class="btn btn-primary btn-sm text-white float-end">Back</a>
                    </h4>
                </div>
                <div class="card-body">
                    <form action="{{url('admin/category')}}" method="POST" enctype="multipart/form-data">
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="">Name</label>
                                <input type="text" name="name" class="form-control">
                                @error('name')
                                    <small class="text-danger">{{$message}}</small>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="">Slug</label>
                                <input type="text" name="slug" class="form-control">
                                @error('slug')
                                    <small class="text-danger">{{$message}}</small>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="">Description</label>
                                <textarea name="description" class="form-control" rows="3"></textarea>
                                @error('description')
                                    <small class="text-danger">{{$message}}</small>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="">Image</label>
                                <input type="file" name="image" class="form-control">
                                @error('image')
                                    <small class="text-danger">{{$message}}</small>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="">Status</label> <br>
                                <input type="checkbox" name="status">
                            </div>
                            <div class="col-md-12">
                                <h4>SEO</h4>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="">Meta Title</label>
                                <textarea name="meta_title" class="form-control" rows="3"></textarea>
                                @error('meta_title')
                                    <small class="text-danger">{{$message}}</small>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="">Meta Keyword</label>
                                <textarea name="meta_keyword" class="form-control" rows="3"></textarea>
                                @error('meta_keyword')
                                    <small class="text-danger">{{$message}}</small>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="">Meta Description</label>
                                <textarea name="meta_description" class="form-control" rows="3"></textarea>
                                @error('meta_description')
                                    <small class="text-danger">{{$message}}</small>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <button type="submit" class="btn btn-primary float-end text-white">Save</button>
                            </div>
                        </div>
                        @csrf
                    </form>
                </div>
            </div>
        </div>
    </div>
    
@endsection