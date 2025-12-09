.class public interface abstract LY2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LY2/b$d;,
        LY2/b$c;,
        LY2/b$a;,
        LY2/b$b;
    }
.end annotation


# virtual methods
.method public abstract a(LY2/b$d;)LY2/b$c;
.end method

.method public abstract b(Ljava/lang/String;LY2/b$a;LY2/b$c;)V
.end method

.method public abstract c(Ljava/lang/String;Ljava/nio/ByteBuffer;LY2/b$b;)V
.end method

.method public d()LY2/b$c;
    .locals 1

    new-instance v0, LY2/b$d;

    invoke-direct {v0}, LY2/b$d;-><init>()V

    invoke-interface {p0, v0}, LY2/b;->a(LY2/b$d;)LY2/b$c;

    move-result-object v0

    return-object v0
.end method

.method public abstract e(Ljava/lang/String;LY2/b$a;)V
.end method

.method public abstract f(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
.end method
