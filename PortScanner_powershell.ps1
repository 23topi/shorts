for($i=130; $i -le 140; $i++){
    Test-NetConnection localhost -Port $i
}