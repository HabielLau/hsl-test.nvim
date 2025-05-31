#!/bin/env bash

nvim --headless +"lua require('hsl-test.extra').setup()" +qa
