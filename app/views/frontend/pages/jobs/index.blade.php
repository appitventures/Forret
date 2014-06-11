@extends('frontend.layouts.default')
@section('content')
    <div id="page" class="hfeed site">

    <header id="masthead" class="site-header" role="banner">
        <div class="container">
            <nav id="site-navigation" class="site-primary-navigation slide-left">
                <a href="#" class="primary-menu-toggle">
                    <i class="icon-cancel-circled">
                    </i> <span>Close</span>
                </a>
                <form role="search" method="get" id="searchform" action="http://demo.astoundify.com/jobify-darker/">
                    <div>
                        <label class="screen-reader-text" for="s">Search for:</label>
                        <input type="text" value="" name="s" id="s" />
                        <button type="submit" id="searchsubmit">
                            <i class="icon-search">
                            </i>
                        </button>
                    </div>
                </form>                 <div class="menu-main-menu-container">
                    <ul id="menu-main-menu" class="nav-menu-primary">
                        <li id="menu-item-2075" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-2069 current_page_item menu-item-has-children has-children menu-item-2075">
                            <a href="http://demo.astoundify.com/jobify-darker/find-a-job/">Jobs</a>
                            <ul class="sub-menu">
                                <li id="menu-item-2076" class="menu-item menu-item-type-taxonomy menu-item-object-job_listing_region menu-item-2076">
                                    <a href="http://demo.astoundify.com/jobify-darker/job-region/san-francisco/">San Francisco</a>
                                </li>
                                <li id="menu-item-2077" class="menu-item menu-item-type-taxonomy menu-item-object-job_listing_region menu-item-2077">
                                    <a href="http://demo.astoundify.com/jobify-darker/job-region/palo-alto/">Palo Alto</a>
                                </li>
                                <li id="menu-item-2148" class="menu-item menu-item-type-taxonomy menu-item-object-job_listing_region menu-item-2148">
                                    <a href="http://demo.astoundify.com/jobify-darker/job-region/san-jose/">San Jose</a>
                                </li>
                                <li id="menu-item-2627" class="menu-item menu-item-type-taxonomy menu-item-object-job_listing_region menu-item-2627">
                                    <a href="http://demo.astoundify.com/jobify-darker/job-region/sacramento/">Sacramento</a>
                                </li>
                            </ul>
                        </li>
                        <li id="menu-item-1897" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1897">
                            <a href="http://demo.astoundify.com/jobify-darker/post-a-job/">Post A Job</a>
                        </li>
                        <li id="menu-item-2788" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2788">
                            <a href="http://demo.astoundify.com/jobify-darker/find-a-candidate/">Resumes</a>
                        </li>
                        <li id="menu-item-2134" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2134">
                            <a href="http://demo.astoundify.com/jobify-darker/post-a-resume/">Post A Resume</a>
                        </li>
                        <li id="menu-item-1892" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children has-children menu-item-1892">
                            <a href="#">Jobify Pages</a>
                            <ul class="sub-menu">
                                <li id="menu-item-1895" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1895">
                                    <a href="http://demo.astoundify.com/jobify-darker/blog/">Blog</a>
                                </li>
                                <li id="menu-item-1906" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1906">
                                    <a href="http://demo.astoundify.com/jobify-darker/post-a-job/">Post A Job</a>
                                </li>
                                <li id="menu-item-1967" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1967">
                                    <a href="http://demo.astoundify.com/jobify-darker/manage-jobs/">Manage Jobs</a>
                                </li>
                                <li id="menu-item-2135" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2135">
                                    <a href="http://demo.astoundify.com/jobify-darker/resumes/">Resumes</a>
                                </li>
                                <li id="menu-item-2137" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2137">
                                    <a href="http://demo.astoundify.com/jobify-darker/post-a-resume/">Post A Resume</a>
                                </li>
                                <li id="menu-item-2136" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2136">
                                    <a href="http://demo.astoundify.com/jobify-darker/manage-resumes/">Manage Resumes</a>
                                </li>
                                <li id="menu-item-1966" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1966">
                                    <a href="http://demo.astoundify.com/jobify-darker/my-alerts/">My Alerts</a>
                                </li>
                                <li id="menu-item-1924" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1924">
                                    <a href="http://demo.astoundify.com/jobify-darker/plans-pricing/">Plans &#038; Pricing</a>
                                </li>
                                <li id="menu-item-1902" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1902">
                                    <a href="http://demo.astoundify.com/jobify-darker/testimonials/">Testimonials</a>
                                </li>
                                <li id="menu-item-1904" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1904">
                                    <a href="http://demo.astoundify.com/jobify-darker/privacy-policy/">Privacy Policy</a>
                                </li>
                                <li id="menu-item-1905" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1905">
                                    <a href="http://demo.astoundify.com/jobify-darker/terms-and-conditions/">Our Terms</a>
                                </li>
                                <li id="menu-item-1954" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1954">
                                    <a href="http://demo.astoundify.com/jobify-darker/contact/">Contact</a>
                                </li>
                            </ul>
                        </li>
                        <li id="register-modal" class="register menu-item menu-item-type-post_type menu-item-object-page menu-item-1945">
                            <a href="http://demo.astoundify.com/jobify-darker/sign-up/">Sign Up</a>
                        </li>
                        <li id="login-modal" class="login menu-item menu-item-type-post_type menu-item-object-page menu-item-1900">
                            <a href="http://demo.astoundify.com/jobify-darker/login/">Login</a>
                        </li>
                    </ul>
                </div>             </nav>

            <a href="#" class="primary-menu-toggle in-header">
                <i class="icon-menu">
                </i>
            </a>

            <a href="http://demo.astoundify.com/jobify-darker/" title="Jobify Darker" rel="home" class="site-branding">
                <h1 class="site-title">
                    <img src="http://demo.astoundify.com/jobify-darker/wp-content/uploads/sites/16/2013/07/jobify-main-logo1.svg" width="" height="" alt="" />

                    <span>Jobify Darker</span>
                </h1>
                <h2 class="site-description">Job Searching Just Got Easy</h2>
            </a>
        </div>
    </header>
    <!-- #masthead -->

    <div id="main" class="site-main">

        <div id="primary" class="content-area">
            <div id="content" class="homepage-content" role="main">
                <section id="jobify_widget_map" class="homepage-widget jobify_widget_map">
                    <div id="map-canvas-wrap">
                        <div class="map-filter animated fadeInUp">
                            <div class="live-map">

                                <form class="job_filters">

                                    <div class="search_jobs">
                                        <div class="row">

                                            <div class="col-md-4 col-sm-6 col-xs-12 search_keywords">
                                                <label for="search_keywords">Keywords</label>
                                                <input type="text" name="search_keywords" id="search_keywords" placeholder="All Jobs" value="" />
                                            </div>

                                            <div class="col-md-3 col-sm-6 col-xs-12 search_location">
                                                <label for="search_location">Location</label>
                                                <input type="text" name="search_location" id="search_location" placeholder="Any Location" value="" />
                                            </div>

                                            <div class="col-md-3 col-sm-12">
                                                <div class="search_categories">
                                                    <label for="search_categories">Category</label>
                                                    <select name='search_categories' id='search_categories' class='postform' >
                                                        <option value='0' selected='selected'>All Job Categories</option>
                                                        <option class="level-0" value="22">Design</option>
                                                        <option class="level-0" value="7">Developement</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="col-md-2 col-sm-12">
                                                <input type="submit" name="submit" value="Search" />
                                            </div>
                                        </div>
                                    </div>

                                    <ul class="job_types">
                                        <li>
                                            <label for="job_type_freelance" class="freelance">
                                                <input type="checkbox" name="filter_job_type[]" value="freelance"  checked='checked' id="job_type_freelance" /> Freelance</label>
                                        </li>
                                        <li>
                                            <label for="job_type_full-time" class="full-time">
                                                <input type="checkbox" name="filter_job_type[]" value="full-time"  checked='checked' id="job_type_full-time" /> Full Time</label>
                                        </li>
                                        <li>
                                            <label for="job_type_internship" class="internship">
                                                <input type="checkbox" name="filter_job_type[]" value="internship"  checked='checked' id="job_type_internship" /> Internship</label>
                                        </li>
                                        <li>
                                            <label for="job_type_part-time" class="part-time">
                                                <input type="checkbox" name="filter_job_type[]" value="part-time"  checked='checked' id="job_type_part-time" /> Part Time</label>
                                        </li>
                                        <li>
                                            <label for="job_type_temporary" class="temporary">
                                                <input type="checkbox" name="filter_job_type[]" value="temporary"  checked='checked' id="job_type_temporary" /> Temporary</label>
                                        </li>
                                    </ul>

                                    <div class="showing_jobs">
                                    </div>
                                </form>                 </div>
                        </div>

                        <div id="jobify-map-canvas" class="map-canvas">
                        </div>
                    </div>
                    <script>
                        jQuery( document ).ready(function($) {
                            var map = jobifyMap();

                            map.init({
                                widget        : '.jobify_widget_map',
                                canvas        : '#jobify-map-canvas',
                                type          : 'job_listing',
                                inString      : '%s Jobs Found',
                                perPage       : 20,
                                showSearch    : '',
                                scrollWheel   : false,
                                clusterRadius : 200,
                                clusterColor  : '#00a9e0',
                                zoom          : 'auto',
                                center        : ["autofit"]                 });
                        });
                    </script>

                </section>
                <div class="container">
                    <div class="entry-content">


                        <div class="job_listings" data-location="" data-keywords="" data-show_filters="1" data-per_page="10" data-orderby="featured" data-order="DESC" data-categories="">
                            <form class="job_filters">

                                <div class="search_jobs">
                                    <div class="row">

                                        <div class="col-md-4 col-sm-6 col-xs-12 search_keywords">
                                            <label for="search_keywords">Keywords</label>
                                            <input type="text" name="search_keywords" id="search_keywords" placeholder="All Jobs" value="" />
                                        </div>

                                        <div class="col-md-3 col-sm-6 col-xs-12 search_location">
                                            <label for="search_location">Location</label>
                                            <input type="text" name="search_location" id="search_location" placeholder="Any Location" value="" />
                                        </div>

                                        <div class="col-md-3 col-sm-12">
                                            <div class="search_categories">
                                                <label for="search_categories">Category</label>
                                                <select name='search_categories' id='search_categories' class='postform' >
                                                    <option value='0' selected='selected'>All Job Categories</option>
                                                    <option class="level-0" value="22">Design</option>
                                                    <option class="level-0" value="7">Developement</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-2 col-sm-12">
                                            <input type="submit" name="submit" value="Search" />
                                        </div>
                                    </div>
                                </div>

                                <ul class="job_types">
                                    <li>
                                        <label for="job_type_freelance" class="freelance">
                                            <input type="checkbox" name="filter_job_type[]" value="freelance"  checked='checked' id="job_type_freelance" /> Freelance</label>
                                    </li>
                                    <li>
                                        <label for="job_type_full-time" class="full-time">
                                            <input type="checkbox" name="filter_job_type[]" value="full-time"  checked='checked' id="job_type_full-time" /> Full Time</label>
                                    </li>
                                    <li>
                                        <label for="job_type_internship" class="internship">
                                            <input type="checkbox" name="filter_job_type[]" value="internship"  checked='checked' id="job_type_internship" /> Internship</label>
                                    </li>
                                    <li>
                                        <label for="job_type_part-time" class="part-time">
                                            <input type="checkbox" name="filter_job_type[]" value="part-time"  checked='checked' id="job_type_part-time" /> Part Time</label>
                                    </li>
                                    <li>
                                        <label for="job_type_temporary" class="temporary">
                                            <input type="checkbox" name="filter_job_type[]" value="temporary"  checked='checked' id="job_type_temporary" /> Temporary</label>
                                    </li>
                                </ul>

                                <div class="showing_jobs">
                                </div>
                            </form>
                            <ul class="job_listings">
                            </ul>
                            <a class="load_more_jobs" href="#" style="display:none;">
                                <strong>Load more job listings</strong>
                            </a>
                        </div>

                    </div>
                </div>

            </div>
            <!-- #content -->
        </div>
        <!-- #primary -->


    </div>
    <!-- #main -->

    <div class="footer-cta">
        <div class="container">
            <h2>Got a question?</h2>
            <p>We're here to help. Check out our FAQs, send us an email or call us at 1 800 555 5555</p>
        </div>
    </div>

    <footer id="colophon" class="site-footer" role="contentinfo">
        <div class="footer-widgets">
            <div class="container">
                <aside id="text-2" class="footer-widget widget_text">           <div class="textwidget">
                        <embed src="http://demo.astoundify.com/jobify/wp-content/uploads/sites/15/2013/09/jobify-main.svg" type="image/svg+xml" />
                        <br>
                        </br>
                        Subscribe to our newsletter
                        <form id="pmc_mailchimp" action="" method="post">

                            <div>
                                <label for="pmc_email">Enter your email</label>
                                <br/>
                                <input name="pmc_email" id="pmc_email" type="text" placeholder="Email Address"/>
                            </div>
                            <div>
                                <input type="hidden" name="redirect" value="http://demo.astoundify.com/jobify-darker/find-a-job/?submitted=yes"/>
                                <input type="hidden" name="action" value="pmc_signup"/>
                                <input type="hidden" name="pmc_list_id" value="d65b1b9005"/>
                                <input type="submit" value="Sign Up"/>
                            </div>
                        </form>

                        <br>
                        </br>
                        <br>
                        </br>
                        Job Searching Just Got Easy. Use Jobify to run a hiring site and earn money in the process!</div>
                </aside>
                <aside id="pages-2" class="footer-widget widget_pages">
                    <h3 class="footer-widget-title">Site Map</h3>        <ul>
                        <li class="page_item page-item-703">
                            <a href="http://demo.astoundify.com/jobify-darker/blog/">Blog</a>
                        </li>
                        <li class="page_item page-item-1882">
                            <a href="http://demo.astoundify.com/jobify-darker/contact/">Contact</a>
                        </li>
                        <li class="page_item page-item-2781">
                            <a href="http://demo.astoundify.com/jobify-darker/find-a-candidate/">Find A Candidate</a>
                        </li>
                        <li class="page_item page-item-2069 current_page_item">
                            <a href="http://demo.astoundify.com/jobify-darker/find-a-job/">Find A Job</a>
                        </li>
                        <li class="page_item page-item-1671">
                            <a href="http://demo.astoundify.com/jobify-darker/login/">Login</a>
                        </li>
                        <li class="page_item page-item-1915">
                            <a href="http://demo.astoundify.com/jobify-darker/manage-jobs/">Manage Jobs</a>
                        </li>
                        <li class="page_item page-item-2124">
                            <a href="http://demo.astoundify.com/jobify-darker/manage-resumes/">Manage Resumes</a>
                        </li>
                        <li class="page_item page-item-2053">
                            <a href="http://demo.astoundify.com/jobify-darker/my-account/">My Account</a>
                        </li>
                        <li class="page_item page-item-1964">
                            <a href="http://demo.astoundify.com/jobify-darker/my-alerts/">My Alerts</a>
                        </li>
                        <li class="page_item page-item-1673">
                            <a href="http://demo.astoundify.com/jobify-darker/plans-pricing/">Plans &#038; Pricing</a>
                        </li>
                        <li class="page_item page-item-14">
                            <a href="http://demo.astoundify.com/jobify-darker/post-a-job/">Post A Job</a>
                        </li>
                        <li class="page_item page-item-2097">
                            <a href="http://demo.astoundify.com/jobify-darker/post-a-resume/">Post A Resume</a>
                        </li>
                        <li class="page_item page-item-1765">
                            <a href="http://demo.astoundify.com/jobify-darker/pricing-plans/">Pricing &amp; Plans</a>
                        </li>
                        <li class="page_item page-item-1762">
                            <a href="http://demo.astoundify.com/jobify-darker/privacy-policy/">Privacy Policy</a>
                        </li>
                        <li class="page_item page-item-2126">
                            <a href="http://demo.astoundify.com/jobify-darker/resumes/">Resumes</a>
                        </li>
                        <li class="page_item page-item-1943">
                            <a href="http://demo.astoundify.com/jobify-darker/sign-up/">Sign Up</a>
                        </li>
                        <li class="page_item page-item-1760">
                            <a href="http://demo.astoundify.com/jobify-darker/terms-and-conditions/">Terms and Conditions</a>
                        </li>
                        <li class="page_item page-item-1719">
                            <a href="http://demo.astoundify.com/jobify-darker/testimonials/">Testimonials</a>
                        </li>
                    </ul>
                </aside>        <aside id="recent-posts-2" class="footer-widget widget_recent_entries">     <h3 class="footer-widget-title">Recent News Articles</h3>       <ul>
                        <li>
                            <a href="http://demo.astoundify.com/jobify-darker/fitness-industry-leading-the-charge-on-hiring-in-the-uk-and-ireland/">Fitness industry leading the charge on hiring in the UK and Ireland</a>
                            <span class="post-date">July 22, 2013</span>
                        </li>
                        <li>
                            <a href="http://demo.astoundify.com/jobify-darker/middle-class-jobs-are-being-replaced-by-burger-flipping-retail-sales-low-pay-jobs-4/">Middle Class jobs are being replaced by burger-flipping, retail sales, low-pay jobs</a>
                            <span class="post-date">July 22, 2013</span>
                        </li>
                        <li>
                            <a href="http://demo.astoundify.com/jobify-darker/canada-adds-12500-jobs-in-modest-july-rebound-which-is-a-good-sign/">Canada adds 12,500 jobs in modest July rebound, good times ahead?</a>
                            <span class="post-date">July 22, 2013</span>
                        </li>
                    </ul>
                </aside>
                <aside id="text-3" class="footer-widget widget_text">
                    <h3 class="footer-widget-title">Jobify Offices</h3>            <div class="textwidget">Jobify Inc.
                        555 Madison Avenue, Suite F-2
                        Manhattan, New York 10282
                        <br>
                        </br>
                        Jobify Inc Canada.
                        545 Younge St, Suite 11
                        Toronto, Ontario M4K 6F4</div>
                </aside>                </div>
        </div>

        <div class="copyright">
            <div class="container">
                <div class="site-info">
                    &copy; 2014 Jobify Darker &mdash; All Rights Reserved                   </div>
                <!-- .site-info -->

                <a href="#top" class="btt">
                    <i class="icon-up-circled">
                    </i>
                </a>

                <div class="footer-social">
                    <a href="http://facebook.com/astoundify">
                        <span class="screen-reader-text">facebook</span>
                    </a>
                    <a href="http://twitter.com/astoundify">
                        <span class="screen-reader-text">twitter</span>
                    </a>
                    <a href="https://plus.google.com/">
                        <span class="screen-reader-text">google</span>
                    </a>
                    <a href="http://instagram.com/">
                        <span class="screen-reader-text">instagram</span>
                    </a>
                    <a href="https://pinterest.com/">
                        <span class="screen-reader-text">pinterest</span>
                    </a>
                    <a href="https://vimeo.com/astoundify">
                        <span class="screen-reader-text">vimeo</span>
                    </a>
                    <a href="http://www.linkedin.com">
                        <span class="screen-reader-text">linkedin</span>
                    </a>
                </div>              </div>
        </div>
    </footer>
    <!-- #colophon -->
    </div>
    <!-- #page -->


    <div id="login-modal-wrap" class="modal-login modal">
        <h2 class="modal-title">Login</h2>


        <form name="loginform" id="loginform" action="http://demo.astoundify.com/jobify-darker/wp-login.php" method="post">

            <p class="login-username">
                <label for="user_login">Username</label>
                <input type="text" name="log" id="user_login" class="input" value="" size="20" />
            </p>
            <p class="login-password">
                <label for="user_pass">Password</label>
                <input type="password" name="pwd" id="user_pass" class="input" value="" size="20" />
            </p>
            <p class="has-account">
                <i class="icon-help-circled">
                </i> <a href="http://demo.astoundify.com/jobify-darker/my-account/lost-password/">Forgot Password?</a>
            </p>
            <p class="login-remember">
                <label>
                    <input name="rememberme" type="checkbox" id="rememberme" value="forever" checked="checked" /> Remember Me</label>
            </p>
            <p class="login-submit">
                <input type="submit" name="wp-submit" id="wp-submit" class="button-primary" value="Sign In" />
                <input type="hidden" name="redirect_to" value="http://demo.astoundify.com/jobify-darker" />
            </p>

        </form>
    </div>

    <div id="register-modal-wrap" class="modal-register modal">
        <h2 class="modal-title">Sign Up</h2>

        <form action="http://demo.astoundify.com/jobify-darker/sign-up/" method="post" id="register-form" class="job-manager-form" enctype="multipart/form-data">
            <fieldset class="fieldset-">
                <label for="">Your Name</label>
                <div class="field">
                    <input type="text" class="input-text" name="nicename" id="nicename" placeholder="" value="" maxlength="" />
                </div>
            </fieldset>
            <fieldset class="fieldset-">
                <label for="">Email Address</label>
                <div class="field">
                    <input type="text" class="input-text" name="email" id="email" placeholder="email@example.com" value="" maxlength="" />
                </div>
            </fieldset>
            <fieldset class="fieldset-">
                <label for="">Password</label>
                <div class="field">
                    <input type="password" class="input-text" name="password" id="password" placeholder="" value="" maxlength="" />
                </div>
            </fieldset>

            <fieldset class="fieldset-">
                <label for="">About You</label>
                <div class="field">
                    <select name="role" id="role">
                        <option value="none" >&mdash;Select&mdash;</option>
                        <option value="employer" >I&#039;m an employer looking to hire</option>
                        <option value="candidate" >I&#039;m a candidate looking for a job</option>
                    </select>           </div>
            </fieldset>

            <p class="has-account" id="login-modal">
                <i class="icon-help-circled">
                </i> Already have an account? <a href="http://demo.astoundify.com/jobify-darker/login/">Login</a>
            </p>

            <p class="register-submit">
                <input type="hidden" id="_wpnonce" name="_wpnonce" value="072321544b" />
                <input type="hidden" name="_wp_http_referer" value="/jobify-darker/find-a-job/" />      <input type="hidden" name="job_manager_form" value="register" />
                <input type="submit" name="submit_register" class="button button-medium" value="Register" />
            </p>
        </form>
    </div>
@stop