import argparse


argparser = argparse.ArgumentParser(add_help=False)
argparser.add_argument('--property_uri', type=str,
                       help=('Site or app URI to query data for (including '
                             'trailing slash).'))

# argparser.add_argument('start_date', type=str,
#                        help=('Start date of the requested date range in '
#                              'YYYY-MM-DD format.'))
# argparser.add_argument('end_date', type=str,
#                        help=('End date of the requested date range in '
#                              'YYYY-MM-DD format.'))
# args = argparser.parse_args()
print(argparser.parse_args().property_uri)


# import argparse


# parser = argparse.ArgumentParser()
# parser.add_argument("echo")
# args = parser.parse_args()
# print (args.echo)
# qqq='999'
# aaa='888'
# print("{}and{}".format(qqq,aaa))