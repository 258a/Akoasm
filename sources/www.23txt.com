{

    "name": "天籁小说网",

    "url": "www.23txt.com",

    "version": 101,

    "search": {

        "url": "https://www.23txt.com/search.php?keyword=${key}",

        "list": ".result-list > div",

        "name": "h3",

        "author": "div > p:nth-child(1) > span:nth-child(2)",

        "cover": "img",

        "summary": ".result-game-item-detail > p",        

        "detail": "h3 > a"

    },

    "detail": {

        "status": "#info > p:nth-child(3)",

        "update": "#info > p:nth-child(4)@match->(?<=最后更新：).+",

        "lastChapter": "#info > p:nth-child(5)"

    },

    "catalog": {

        "list": "#list > dl > dd",

        "name": "a",

        "chapter": "a"

    },

    "chapter": {

        "content": "#content"

    }

}
