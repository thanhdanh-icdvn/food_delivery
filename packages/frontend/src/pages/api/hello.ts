// Next.js API route support: https://nextjs.org/docs/api-routes/introduction
import type { NextApiRequest, NextApiResponse } from 'next';

type Data = {
  name: string;
};

/**
 * It takes a request and a response object, and returns a response with a status code of 200 and a
 * JSON body containing a name property
 * @param {NextApiRequest} req - This is the Next.js API request object. It contains information about
 * the request, such as the URL, HTTP method, headers, query string parameters, and request body.
 * @param res - NextApiResponse<Data>
 */
export default function handler(req: NextApiRequest, res: NextApiResponse<Data>) {
  res.status(200).json({ name: 'John Doe' });
}
