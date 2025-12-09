.class public abstract LD3/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LI3/F;

.field public static final b:LI3/F;

.field public static final c:LI3/F;

.field public static final d:LI3/F;

.field public static final e:LI3/F;

.field public static final f:LD3/Y;

.field public static final g:LD3/Y;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LI3/F;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LD3/x0;->a:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LD3/x0;->b:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LD3/x0;->c:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LD3/x0;->d:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LD3/x0;->e:LI3/F;

    new-instance v0, LD3/Y;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LD3/Y;-><init>(Z)V

    sput-object v0, LD3/x0;->f:LD3/Y;

    new-instance v0, LD3/Y;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LD3/Y;-><init>(Z)V

    sput-object v0, LD3/x0;->g:LD3/Y;

    return-void
.end method

.method public static final synthetic a()LI3/F;
    .locals 1

    sget-object v0, LD3/x0;->a:LI3/F;

    return-object v0
.end method

.method public static final synthetic b()LI3/F;
    .locals 1

    sget-object v0, LD3/x0;->c:LI3/F;

    return-object v0
.end method

.method public static final synthetic c()LD3/Y;
    .locals 1

    sget-object v0, LD3/x0;->g:LD3/Y;

    return-object v0
.end method

.method public static final synthetic d()LD3/Y;
    .locals 1

    sget-object v0, LD3/x0;->f:LD3/Y;

    return-object v0
.end method

.method public static final synthetic e()LI3/F;
    .locals 1

    sget-object v0, LD3/x0;->e:LI3/F;

    return-object v0
.end method

.method public static final synthetic f()LI3/F;
    .locals 1

    sget-object v0, LD3/x0;->d:LI3/F;

    return-object v0
.end method

.method public static final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, LD3/k0;

    if-eqz v0, :cond_0

    new-instance v0, LD3/l0;

    check-cast p0, LD3/k0;

    invoke-direct {v0, p0}, LD3/l0;-><init>(LD3/k0;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public static final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, LD3/l0;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, LD3/l0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, LD3/l0;->a:LD3/k0;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method
