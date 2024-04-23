exit;
if bulletpower >= (other.shot_stats.Shot_Power / 10) {
    bulletpower -= (other.shot_stats.Shot_Power / 10);
    instance_destroy(other);
} else {
    other.shot_stats.Shot_Power -= bulletpower * 10
    instance_destroy();
}

