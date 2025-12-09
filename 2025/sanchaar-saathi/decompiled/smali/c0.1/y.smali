.class public abstract Lc0/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lc0/x;Ll3/e;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lc0/y$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc0/y$a;-><init>(Ll3/e;)V

    invoke-interface {p0, v0, p1}, Lc0/x;->d(Lu3/q;Ll3/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
