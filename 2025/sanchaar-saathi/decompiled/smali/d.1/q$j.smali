.class public final synthetic Ld/q$j;
.super Lv3/j;
.source "SourceFile"

# interfaces
.implements Lu3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/q;->h(Landroidx/lifecycle/k;Ld/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string v5, "updateEnabledCallbacks()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Ld/q;

    const-string v4, "updateEnabledCallbacks"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lv3/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ld/q$j;->o()V

    sget-object v0, Lh3/n;->a:Lh3/n;

    return-object v0
.end method

.method public final o()V
    .locals 1

    iget-object v0, p0, Lv3/c;->f:Ljava/lang/Object;

    check-cast v0, Ld/q;

    invoke-static {v0}, Ld/q;->g(Ld/q;)V

    return-void
.end method
