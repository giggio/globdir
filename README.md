# Globdir
=======

A way to glob Windows directories using .NET. 
Check [here](http://en.wikipedia.org/wiki/Glob_(programming)) to understand what glob is.

## Documentation

Still has to be created, and will be hosted on the github wiki. 

## Usage

Just add the reference via nuget and call the static GetMatches method on the GlobDir.Glob class.
	
	const string pattern = "**/File*.txt";
	var globTestDir = "c:\temp\folder\".Replace("\\", "/");
	var matches = Glob.GetMatches(string.Format("{0}" + pattern, globTestDir)).ToList();

Right now, read [the tests](https://github.com/giggio/globdir/blob/master/src/GlobDir/Tests/GlobTests.cs), as they make it easy to understand the usage.

## Install via Nuget:

    Install-Package globdir

The package can be found here: [http://nuget.org/packages/globdir](http://nuget.org/packages/globdir)

## Support

* View the project backlog at Github: [https://github.com/giggio/globdir/issues](https://github.com/giggio/globdir/issues)

## Maintainers

* [Giovanni Bassi](http://blog.lambda3.com.br/L3/giovannibassi/), [Lambda3](http://www.lambda3.com.br), [@giovannibassi](http://twitter.com/giovannibassi)

This software is open source. The specific license is still to be decided. 