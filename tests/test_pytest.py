"""
    This is a dummy test, mainly to check that pytest
    itself is installed and working properly
"""

import pytest

@pytest.fixture
def hello():
    return "Hello world"


def test_content(hello):
    assert "world" in hello
