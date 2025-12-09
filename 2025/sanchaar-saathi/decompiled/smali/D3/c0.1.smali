.class public abstract LD3/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a()LD3/Z;
    .locals 2

    new-instance v0, LD3/f;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {v0, v1}, LD3/f;-><init>(Ljava/lang/Thread;)V

    return-object v0
.end method
