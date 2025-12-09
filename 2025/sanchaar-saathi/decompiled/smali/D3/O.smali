.class public abstract LD3/O;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field public static final b:LD3/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "kotlinx.coroutines.main.delay"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LI3/G;->f(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, LD3/O;->a:Z

    invoke-static {}, LD3/O;->b()LD3/Q;

    move-result-object v0

    sput-object v0, LD3/O;->b:LD3/Q;

    return-void
.end method

.method public static final a()LD3/Q;
    .locals 1

    sget-object v0, LD3/O;->b:LD3/Q;

    return-object v0
.end method

.method public static final b()LD3/Q;
    .locals 2

    sget-boolean v0, LD3/O;->a:Z

    if-nez v0, :cond_0

    sget-object v0, LD3/N;->m:LD3/N;

    return-object v0

    :cond_0
    invoke-static {}, LD3/V;->c()LD3/z0;

    move-result-object v0

    invoke-static {v0}, LI3/v;->c(LD3/z0;)Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, v0, LD3/Q;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast v0, LD3/Q;

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, LD3/N;->m:LD3/N;

    :goto_1
    return-object v0
.end method
