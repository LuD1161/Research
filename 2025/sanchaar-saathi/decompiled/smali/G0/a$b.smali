.class public final LG0/a$b;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG0/a;->f()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:LG0/a;


# direct methods
.method public constructor <init>(LG0/a;)V
    .locals 0

    iput-object p1, p0, LG0/a$b;->f:LG0/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 4

    iget-object v0, p0, LG0/a$b;->f:LG0/a;

    invoke-static {v0}, LG0/a;->b(LG0/a;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getWindowExtensions"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, LG0/a$b;->f:LG0/a;

    invoke-virtual {v1}, LG0/a;->c()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, LP0/a;->a:LP0/a;

    const-string v3, "getWindowExtensionsMethod"

    invoke-static {v0, v3}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, LP0/a;->c(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

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

    invoke-virtual {p0}, LG0/a$b;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
