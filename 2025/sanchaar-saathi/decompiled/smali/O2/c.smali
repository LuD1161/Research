.class public LO2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:LO2/c;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LO2/c;->a:Ljava/util/Map;

    return-void
.end method

.method public static b()LO2/c;
    .locals 2

    sget-object v0, LO2/c;->b:LO2/c;

    if-nez v0, :cond_1

    const-class v0, LO2/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, LO2/c;->b:LO2/c;

    if-nez v1, :cond_0

    new-instance v1, LO2/c;

    invoke-direct {v1}, LO2/c;-><init>()V

    sput-object v1, LO2/c;->b:LO2/c;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, LO2/c;->b:LO2/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/flutter/embedding/engine/b;
    .locals 1

    iget-object v0, p0, LO2/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/embedding/engine/b;

    return-object p1
.end method
