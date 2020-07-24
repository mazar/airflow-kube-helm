#!/usr/bin/env bash

if [ ! -d nfs_mount/.aws ]; then
  mkdir -p nfs_mount/.aws;
fi

mount -t nfs localhost:/exports nfs_mount

cp ~/.aws/config nfs_mount/.aws/
cp ~/.aws/credentials nfs_mount/.aws/

sleep 1
umount nfs_mount/