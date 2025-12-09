.class public abstract LD3/b0;
.super LD3/Z;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LD3/Z;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a0()Ljava/lang/Thread;
.end method

.method public final b0()V
    .locals 2

    invoke-virtual {p0}, LD3/b0;->a0()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, v0, :cond_0

    invoke-static {}, LD3/c;->a()LD3/b;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return-void
.end method
