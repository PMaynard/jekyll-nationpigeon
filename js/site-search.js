var searchTimer;
var revised;

$(document).ready(function () {

    $('#search').css('position', 'relative');
    $('#search').append('<ul id="search-results" class="list-group"></div>');

    $('#search-text').keydown(function (e) {
        var k = e.keyCode || e.which;
        if (k == 13) {
            siteSearch($('#search-text').val());
            return false; // !!!
        }

    });

})

siteSearch = function (w) {

    var words;
    var o = this;

    o.parseWords = function (w) {

        // parse the words out of the query
        words = w.toLowerCase().match(/\w{2,}/gi);

        // convert the array to stemmed words
        sWords = new Array();
        for (w2 in words) {
            stem = stemmer(words[w2]);
            if ($.inArray(stem, sWords) == -1) {
                sWords.push(stem);
            }
        }

        // return the stemmed version
        return sWords;

    };

    o.getIndexUrls = function (ws) {

        // create an array of urls pointing to the first letter of each word
        files = new Object();
        for (word in ws) {
            temp = '/search/terms/' + ws[word].substring(0, 2).toLowerCase() + '.json';
            files[temp] = null;
        }

        return files;

    };

    o.loadIndexes = function (is) {
        // make an ajax call to get all the indexes
        for (file in is) {
            $.getJSON(file, o.getPostIds);
        }
    };

    o.getPostIds = function (ts) {

        if (!o.posts.length) {
            o.posts = new Array();
        }

        // loop through the terms, then the ids for each term
        for (var term in ts) {

            // if the index term matches one of our search terms, add it to the list of posts
            if ($.inArray(term, o.words) != -1) {

                for (id in ts[term]) {
                    if (!o.posts[ts[term][id]]) {
                        o.posts[ts[term][id]] = 1;
                    } else {
                        o.posts[ts[term][id]]++;
                    }

                }

            }

        }

    };

    o.getPosts = function () {

        var sortable = [];
        for (var postId in o.posts) {
            sortable.push([postId, o.posts[postId]])
        }

        o.posts = sortable.sort(function (a, b) {
            return b[1] - a[1]
        })

        for (var i = 0; i < o.posts.length && i < 20; i++) {
            $.get('/search/posts/' + o.posts[i][0] + '.html', o.loadPostData);
        }

        $(document).unbind();

    };

    o.loadPostData = function (ts) {

        var obj = $(ts);

        if (obj.find('.date').length > 0) {
            var date = $.timeago(obj.find('.date').text());
        }

        $('#search-results').removeClass('thinking');
        $('#search-results').css('display', 'block');
        $('#search-results').append(obj.hide());
        obj.slideDown('fast');
    }

    o.clearResults = function () {
        $(document).unbind();
        $('#search-results').empty();
        $('#search-results').hide();
        $('.form-search i').remove();
        $('.form-search input').val('');
    }

    // here's the main code of the function

    clearTimeout(searchTimer);
    searchTimer = null;
    $(document).unbind();
    $('#search-results').empty();
    $('#search-results').remove('thinking');
    $('#search-results').hide();

    if ($.trim(w) != '') {

        $('#search-results').addClass('thinking');
        $('#search-results').show();

        o.posts = new Array();
        o.words = o.parseWords(w);
        o.indexUrls = o.getIndexUrls(o.words);

        o.loadIndexes(o.indexUrls);

        $(document).ajaxStop(function () {
            if (o.posts.length) {
                $('#search-results').append('<div class="alert alert-success"><strong>Search Results</strong> for "'+w+'"</div>');
                o.getPosts();
            }
        });

    }
};