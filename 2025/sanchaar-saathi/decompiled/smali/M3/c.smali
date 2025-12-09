.class public abstract LM3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LI3/F;

.field public static final b:LI3/F;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LI3/F;

    const-string v1, "NO_OWNER"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LM3/c;->a:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "ALREADY_LOCKED_BY_OWNER"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LM3/c;->b:LI3/F;

    return-void
.end method

.method public static final a(Z)LM3/a;
    .locals 1

    new-instance v0, LM3/b;

    invoke-direct {v0, p0}, LM3/b;-><init>(Z)V

    return-object v0
.end method

.method public static synthetic b(ZILjava/lang/Object;)LM3/a;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, LM3/c;->a(Z)LM3/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c()LI3/F;
    .locals 1

    sget-object v0, LM3/c;->a:LI3/F;

    return-object v0
.end method
