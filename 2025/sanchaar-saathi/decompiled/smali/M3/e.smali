.class public abstract LM3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:LI3/F;

.field public static final c:LI3/F;

.field public static final d:LI3/F;

.field public static final e:LI3/F;

.field public static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v4, 0xc

    const/4 v5, 0x0

    const-string v0, "kotlinx.coroutines.semaphore.maxSpinCycles"

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, LI3/G;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, LM3/e;->a:I

    new-instance v0, LI3/F;

    const-string v1, "PERMIT"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LM3/e;->b:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "TAKEN"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LM3/e;->c:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "BROKEN"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LM3/e;->d:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LM3/e;->e:LI3/F;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v2, "kotlinx.coroutines.semaphore.segmentSize"

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, LI3/G;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, LM3/e;->f:I

    return-void
.end method

.method public static final synthetic a(JLM3/f;)LM3/f;
    .locals 0

    invoke-static {p0, p1, p2}, LM3/e;->h(JLM3/f;)LM3/f;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b()LI3/F;
    .locals 1

    sget-object v0, LM3/e;->d:LI3/F;

    return-object v0
.end method

.method public static final synthetic c()LI3/F;
    .locals 1

    sget-object v0, LM3/e;->e:LI3/F;

    return-object v0
.end method

.method public static final synthetic d()I
    .locals 1

    sget v0, LM3/e;->a:I

    return v0
.end method

.method public static final synthetic e()LI3/F;
    .locals 1

    sget-object v0, LM3/e;->b:LI3/F;

    return-object v0
.end method

.method public static final synthetic f()I
    .locals 1

    sget v0, LM3/e;->f:I

    return v0
.end method

.method public static final synthetic g()LI3/F;
    .locals 1

    sget-object v0, LM3/e;->c:LI3/F;

    return-object v0
.end method

.method public static final h(JLM3/f;)LM3/f;
    .locals 2

    new-instance v0, LM3/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, LM3/f;-><init>(JLM3/f;I)V

    return-object v0
.end method
