.class public final Lz1/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lz1/p;

.field public static final c:Lz1/q;


# instance fields
.field public a:Lz1/q;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Lz1/q;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lz1/q;-><init>(IZZII)V

    sput-object v6, Lz1/p;->c:Lz1/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Lz1/p;
    .locals 2

    const-class v0, Lz1/p;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz1/p;->b:Lz1/p;

    if-nez v1, :cond_0

    new-instance v1, Lz1/p;

    invoke-direct {v1}, Lz1/p;-><init>()V

    sput-object v1, Lz1/p;->b:Lz1/p;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lz1/p;->b:Lz1/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a()Lz1/q;
    .locals 1

    iget-object v0, p0, Lz1/p;->a:Lz1/q;

    return-object v0
.end method

.method public final declared-synchronized c(Lz1/q;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    sget-object p1, Lz1/p;->c:Lz1/q;

    iput-object p1, p0, Lz1/p;->a:Lz1/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lz1/p;->a:Lz1/q;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lz1/q;->i()I

    move-result v0

    invoke-virtual {p1}, Lz1/q;->i()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    :try_start_2
    iput-object p1, p0, Lz1/p;->a:Lz1/q;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
