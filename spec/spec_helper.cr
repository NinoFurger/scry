require "spec"
require "../src/scry/environment_config"


module Scry

  EnvironmentConfig.new.run

  INITIALIZATION_EXAMPLE =
    %({ "jsonrpc": "2.0", "id": 1, "method": "initialize", "params": { "processId": 1, "rootPath": "/foo", "capabilities": {} }})

  NOTIFICATION_EXAMPLE =
    %({"jsonrpc":"2.0","method":"workspace/didChangeConfiguration","params":{"settings":{"crystal-ide":{"maxNumberOfProblems":100}}}})

  DOC_OPEN_EXAMPLE =
    %({"jsonrpc":"2.0","method":"textDocument/didOpen","params":{"textDocument":{"uri":"file:///Users/foo/Projects/crystal_av/src/crystal_av/c_handler.cr","languageId":"crystal","version":1,"text":"put \\"hello\\"; Thing.new"}}})

  SHUTDOWN_EXAMPLE = %({"jsonrpc":"2.0","id":1,"method":"shutdown"})
end
