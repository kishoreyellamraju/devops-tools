region      =	"us-west-2"
env         =	"prod"
appname     =	"poshmark"
bu          =	"it"

deluge={
    name             ="deluge"
    shard_count      ="20"
    retention_period ="96"
}

implicit_post_share_collection_stream={
    name             ="implicit_post_share_collection_stream"
    shard_count      ="16"
    retention_period ="24"
}

implicit_share_stream={
    name             ="implicit_share_stream"
    shard_count      ="16"
    retention_period ="24"
}
