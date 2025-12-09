.class public final LH1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:LH1/c;


# instance fields
.field public final a:LH1/b;

.field public final b:LH1/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LH1/c;

    invoke-direct {v0}, LH1/c;-><init>()V

    const-class v1, LH1/c;

    monitor-enter v1

    :try_start_0
    sput-object v0, LH1/c;->c:LH1/c;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LH1/b;

    invoke-direct {v0}, LH1/b;-><init>()V

    iput-object v0, p0, LH1/c;->a:LH1/b;

    new-instance v0, LH1/e;

    invoke-direct {v0}, LH1/e;-><init>()V

    iput-object v0, p0, LH1/c;->b:LH1/e;

    return-void
.end method

.method public static a()LH1/b;
    .locals 1

    invoke-static {}, LH1/c;->b()LH1/c;

    move-result-object v0

    iget-object v0, v0, LH1/c;->a:LH1/b;

    return-object v0
.end method

.method public static b()LH1/c;
    .locals 2

    const-class v0, LH1/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, LH1/c;->c:LH1/c;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
