.class public LE2/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LE2/d;->c(LY2/b;Landroid/app/Application;Landroid/app/Activity;LU2/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:LE2/d;


# direct methods
.method public constructor <init>(LE2/d;)V
    .locals 0

    iput-object p1, p0, LE2/d$a;->c:LE2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;LY2/c$b;)V
    .locals 0

    iget-object p1, p0, LE2/d$a;->c:LE2/d;

    invoke-static {p1}, LE2/d;->a(LE2/d;)LE2/c;

    move-result-object p1

    invoke-virtual {p1, p2}, LE2/c;->q(LY2/c$b;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, LE2/d$a;->c:LE2/d;

    invoke-static {p1}, LE2/d;->a(LE2/d;)LE2/c;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LE2/c;->q(LY2/c$b;)V

    return-void
.end method
