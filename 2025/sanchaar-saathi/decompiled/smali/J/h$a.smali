.class public LJ/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJ/h;->f([LP/g$b;I)LP/g$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LJ/h;


# direct methods
.method public constructor <init>(LJ/h;)V
    .locals 0

    iput-object p1, p0, LJ/h$a;->a:LJ/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, LP/g$b;

    invoke-virtual {p0, p1}, LJ/h$a;->c(LP/g$b;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, LP/g$b;

    invoke-virtual {p0, p1}, LJ/h$a;->d(LP/g$b;)Z

    move-result p1

    return p1
.end method

.method public c(LP/g$b;)I
    .locals 0

    invoke-virtual {p1}, LP/g$b;->e()I

    move-result p1

    return p1
.end method

.method public d(LP/g$b;)Z
    .locals 0

    invoke-virtual {p1}, LP/g$b;->f()Z

    move-result p1

    return p1
.end method
