import argparse
import tskit

def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument('--input', required=True)
    return parser.parse_args()

def main():
    args = parse_args()
    ts = tskit.load(args.input)
    print(ts.ld_matrix())

if __name__ == '__main__':
    main()
