<%@ include file="Common-Header.jsp"%>
 <!-- LIGHT SECTION -->
      <section class="lightSection clearfix pageHeader">
        <div class="container">
          <div class="row">
            <div class="col-xs-6">
              <div class="page-title">
                <h2>sign up</h2>
              </div>
            </div>
            <div class="col-xs-6">
              <ol class="breadcrumb pull-right">
                <li>
                  <a href="Home">Home</a>
                </li>
                <li class="active">sign up</li>
              </ol>
            </div>
          </div>
        </div>
      </section>
      
      <!-- MAIN CONTENT SECTION -->
      <section class="mainContent signUp">
        <div class="container">
          <div class="row">
            <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 col-xs-12">
              <div class="panel panel-default">
                <div class="panel-heading"><h3>sign up</h3></div>
                <div class="panel-body">
                  <form action="" method="POST" role="form">
                    <div class="form-group">
                      <label for="">First Name</label>
                      <input type="text" class="form-control" name="firstName" id="">
                    </div>
                    <div class="form-group">
                      <label for="">Last Name</label>
                      <input type="text" class="form-control" name="lastName" id="">
                    </div>
                    <div class="form-group">
                      <label for="">Enter Email</label>
                      <input type="email" class="form-control" name="email" id="">
                    </div>
                    <div class="form-group">
                      <label for="">Password</label>
                      <input type="password" class="form-control" name="password" id="">
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Submit</button>
                    <button type="button" class="btn btn-link btn-block"><span>Already have an account?</span> Log in</button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

<%@ include file="Common-Footer.jsp"%>