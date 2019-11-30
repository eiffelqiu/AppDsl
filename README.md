# App DSL

#### Introduction

DSL for App

Convert DSL Language to Flutter Code using BLOC pattern


#### DSL code (example.ad)
```
format: dart
on: main
on: route

# define counter bloc

bloc Counter {
    int counter;

    event INC {
        "+ 1"
    }

    event DEC {
        "- 1"
    }
}

# define timer bloc

bloc Timer {
    int counter;

    event INC {
        "+ 1"
    }

    event DEC {
        "- 1"
    }
}

# define post service

service post {
    api: "https://jsonplaceholder.typicode.com/posts"
    int id;
    int userId;
    string title;
    string body;
}
```

#### Usage

```

    $ java -jar bin/ad.jar dsl/example.ad

```

#### Generate Code

```
C:.
│  README.md
│  run.sh
│
├─bin
│      ad.jar
│
├─dsl
│      example.ad
│
└─gen
    │  main.dart
    │
    ├─bloc
    │  │  bloc.dart
    │  │  route_generator.dart
    │  │  simple_bloc_delegate.dart
    │  │
    │  ├─counter
    │  │      counter_bloc.dart
    │  │      counter_event.dart
    │  │      counter_page.dart
    │  │      counter_state.dart
    │  │
    │  └─timer
    │          timer_bloc.dart
    │          timer_event.dart
    │          timer_page.dart
    │          timer_state.dart
    │
    └─services
        └─post
                post.dart
                posts_widget.dart
                post_mixin.dart
                post_page.dart

```

