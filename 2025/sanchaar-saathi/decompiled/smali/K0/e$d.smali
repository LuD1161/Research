.class public final LK0/e$d;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LK0/e;->o()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:LK0/e;


# direct methods
.method public constructor <init>(LK0/e;)V
    .locals 0

    iput-object p1, p0, LK0/e$d;->f:LK0/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 4

    iget-object v0, p0, LK0/e$d;->f:LK0/e;

    invoke-static {v0}, LK0/e;->c(LK0/e;)LG0/a;

    move-result-object v0

    invoke-virtual {v0}, LG0/a;->c()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getWindowLayoutComponent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, LK0/e$d;->f:LK0/e;

    invoke-static {v1}, LK0/e;->d(LK0/e;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, LP0/a;->a:LP0/a;

    const-string v3, "getWindowLayoutComponentMethod"

    invoke-static {v0, v3}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, LP0/a;->d(Ljava/lang/reflect/Method;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0, v1}, LP0/a;->c(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LK0/e$d;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
