.class public final Lw/a$g;
.super Lw/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lw/a$b;-><init>(Lw/a$a;)V

    return-void
.end method


# virtual methods
.method public a(Lw/a;Lw/a$e;Lw/a$e;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lw/a;->b:Lw/a$e;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lw/a;->b:Lw/a$e;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public b(Lw/a;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lw/a;->a:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lw/a;->a:Ljava/lang/Object;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public c(Lw/a;Lw/a$h;Lw/a$h;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lw/a;->c:Lw/a$h;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lw/a;->c:Lw/a$h;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public d(Lw/a$h;Lw/a$h;)V
    .locals 0

    iput-object p2, p1, Lw/a$h;->b:Lw/a$h;

    return-void
.end method

.method public e(Lw/a$h;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lw/a$h;->a:Ljava/lang/Thread;

    return-void
.end method
