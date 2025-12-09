.class public abstract LG3/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LI3/F;

.field public static final b:LI3/F;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LI3/F;

    const-string v1, "NONE"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LG3/t;->a:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "PENDING"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LG3/t;->b:LI3/F;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)LG3/n;
    .locals 1

    new-instance v0, LG3/s;

    if-nez p0, :cond_0

    sget-object p0, LH3/m;->a:LI3/F;

    :cond_0
    invoke-direct {v0, p0}, LG3/s;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final synthetic b()LI3/F;
    .locals 1

    sget-object v0, LG3/t;->a:LI3/F;

    return-object v0
.end method

.method public static final synthetic c()LI3/F;
    .locals 1

    sget-object v0, LG3/t;->b:LI3/F;

    return-object v0
.end method

.method public static final d(LG3/r;Ll3/i;ILF3/a;)LG3/d;
    .locals 1

    if-ltz p2, :cond_0

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    :goto_0
    sget-object v0, LF3/a;->f:LF3/a;

    if-ne p3, v0, :cond_1

    return-object p0

    :cond_1
    invoke-static {p0, p1, p2, p3}, LG3/q;->a(LG3/p;Ll3/i;ILF3/a;)LG3/d;

    move-result-object p0

    return-object p0
.end method
