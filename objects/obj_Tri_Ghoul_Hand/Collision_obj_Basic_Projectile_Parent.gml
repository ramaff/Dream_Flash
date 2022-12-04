exit;
if bulletpower >= (other.shotpower / 10) {
    bulletpower -= (other.shotpower / 10);
    instance_destroy(other);
} else {
    other.shotpower -= bulletpower * 10
    instance_destroy();
}

