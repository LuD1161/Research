.class public final LK0/e$a;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LK0/e;->k()Z
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

    iput-object p1, p0, LK0/e$a;->f:LK0/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 5

    iget-object v0, p0, LK0/e$a;->f:LK0/e;

    invoke-static {v0}, LK0/e;->b(LK0/e;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBounds"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v3, "getType"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "getState"

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v2, LP0/a;->a:LP0/a;

    const-string v4, "getBoundsMethod"

    invoke-static {v1, v4}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v4, Landroid/graphics/Rect;

    invoke-static {v4}, Lv3/x;->b(Ljava/lang/Class;)LA3/b;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, LP0/a;->b(Ljava/lang/reflect/Method;LA3/b;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v1}, LP0/a;->d(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "getTypeMethod"

    invoke-static {v3, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lv3/x;->b(Ljava/lang/Class;)LA3/b;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, LP0/a;->b(Ljava/lang/reflect/Method;LA3/b;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, LP0/a;->d(Ljava/lang/reflect/Method;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "getStateMethod"

    invoke-static {v0, v3}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lv3/x;->b(Ljava/lang/Class;)LA3/b;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, LP0/a;->b(Ljava/lang/reflect/Method;LA3/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, LP0/a;->d(Ljava/lang/reflect/Method;)Z

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

    invoke-virtual {p0}, LK0/e$a;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
