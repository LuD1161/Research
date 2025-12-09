.class public final LF3/p$b;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LF3/p;->a(LF3/r;Lu3/a;Ll3/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:LD3/l;


# direct methods
.method public constructor <init>(LD3/l;)V
    .locals 0

    iput-object p1, p0, LF3/p$b;->f:LD3/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, LF3/p$b;->f:LD3/l;

    sget-object v0, Lh3/h;->e:Lh3/h$a;

    sget-object v0, Lh3/n;->a:Lh3/n;

    invoke-static {v0}, Lh3/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ll3/e;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LF3/p$b;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method
