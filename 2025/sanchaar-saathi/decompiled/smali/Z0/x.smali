.class public abstract LZ0/x;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LZ0/u;)LZ0/m;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LZ0/m;

    iget-object v1, p0, LZ0/u;->a:Ljava/lang/String;

    invoke-virtual {p0}, LZ0/u;->d()I

    move-result p0

    invoke-direct {v0, v1, p0}, LZ0/m;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
