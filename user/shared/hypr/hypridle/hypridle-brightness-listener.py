import sys, os
from subprocess import run, PIPE

def get_max() -> int:
    proc = run("brightnessctl max", stdout=PIPE, shell=True, check=True)
    return int(proc.stdout.decode())

def get_current() -> int:
    proc = run("brightnessctl get", stdout=PIPE, shell=True, check=True)
    return int(proc.stdout.decode())

def save_current(path: str) -> None:
    run(f"echo {get_current()} > {path}", shell=True, check=True)

def increase(percentage: int, max_: int) -> None:
    while get_current() < max_:
        run(f"brightnessctl set +{percentage}%", shell=True, check=True)

def decrease(percentage: int, min_: int) -> None:
    while get_current() > min_:
        run(f"brightnessctl set {percentage}%-", shell=True, check=True)

def main() -> None:
    home = os.path.expanduser("~")
    path = f"{home}/.cache/brightness"
    func = sys.argv[1]
    perc = int(sys.argv[2])
    if perc <= 0:
        return
    if func == "dec":
        save_current(path)
        min_ = int(sys.argv[3]) if len(sys.argv) > 3 else 10
        decrease(perc, min_)
    elif func == "inc":
        with open(path, mode="r") as f:
            max_ = int(f.read())
        increase(perc, max_)

if __name__ == "__main__":
    main()
