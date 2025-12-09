.class public final Ld/q$b;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/q;-><init>(Ljava/lang/Runnable;LR/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:Ld/q;


# direct methods
.method public constructor <init>(Ld/q;)V
    .locals 0

    iput-object p1, p0, Ld/q$b;->f:Ld/q;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ld/b;)V
    .locals 1

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ld/q$b;->f:Ld/q;

    invoke-static {v0, p1}, Ld/q;->d(Ld/q;Ld/b;)V

    return-void
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ld/b;

    invoke-virtual {p0, p1}, Ld/q$b;->a(Ld/b;)V

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method
