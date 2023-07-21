{:ok, connection} = AMQP.Connection.open
{:ok, channel} = AMQP.Channel.open(connection)

AMQP.Queue.declare(channel, "hello")

AMQP.Basic.publish(channel, "", "hello", "Hey ya")
IO.puts("Battlecruiser Online!")
AMQP.Connection.close(connection)
