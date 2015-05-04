$VAR1 = {
          'global' => {
                        'options' => [
                                       'log',
                                       [
                                         '127.0.0.1 local0',
                                         '127.0.0.1 local1 notice'
                                       ],
                                       'maxconn',
                                       '4096',
                                       'user',
                                       'haproxy',
                                       'group',
                                       'haproxy'
                                     ],
                        'value' => ''
                      },
          'listen' => {
                        'options' => [
                                       'mode',
                                       'http',
                                       'stats',
                                       'enable'
                                     ],
                        'value' => 'webfarm 0.0.0.0:80'
                      },
          'defaults' => {
                          'value' => '',
                          'options' => [
                                         'log',
                                         'global',
                                         'mode',
                                         'http',
                                         'option',
                                         'httplog'
                                       ]
                        }
        };
