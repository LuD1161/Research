.class public final LI3/x$a;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LI3/x;->a(Lu3/l;Ljava/lang/Object;Ll3/i;)Lu3/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lu3/l;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ll3/i;


# direct methods
.method public constructor <init>(Lu3/l;Ljava/lang/Object;Ll3/i;)V
    .locals 0

    iput-object p1, p0, LI3/x$a;->f:Lu3/l;

    iput-object p2, p0, LI3/x$a;->g:Ljava/lang/Object;

    iput-object p3, p0, LI3/x$a;->h:Ll3/i;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, LI3/x$a;->f:Lu3/l;

    iget-object v0, p0, LI3/x$a;->g:Ljava/lang/Object;

    iget-object v1, p0, LI3/x$a;->h:Ll3/i;

    invoke-static {p1, v0, v1}, LI3/x;->b(Lu3/l;Ljava/lang/Object;Ll3/i;)V

    return-void
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LI3/x$a;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method
