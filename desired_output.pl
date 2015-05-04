$VAR1 = {
          'global' => {
                        'value' => '',
                        'options' => {
                                       'group' => 'haproxy',
                                       'log' => [
                                                  '127.0.0.1 local0',
                                                  '127.0.0.1 local1 notice'
                                                ],
                                       'user' => 'haproxy',
                                       'maxconn' => '4096'
                                     }
                      },
          'defaults' => {
                          'options' => {
                                         'option' => 'httplog',
                                         'mode' => 'http',
                                         'log' => 'global'
                                       },
                          'value' => ''
                        },
          'listen' => {
                        'value' => 'webfarm 0.0.0.0:80',
                        'options' => {
                                       'mode' => 'http',
                                       'stats' => 'enable'
                                     }
                      }
        };
