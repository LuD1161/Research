.class public final LD3/E$b;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD3/E;->a(Ll3/i;Ll3/i;Z)Ll3/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lv3/w;

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(Lv3/w;Z)V
    .locals 0

    iput-object p1, p0, LD3/E$b;->f:Lv3/w;

    iput-boolean p2, p0, LD3/E$b;->g:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ll3/i;Ll3/i$b;)Ll3/i;
    .locals 0

    invoke-interface {p1, p2}, Ll3/i;->h(Ll3/i;)Ll3/i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ll3/i;

    check-cast p2, Ll3/i$b;

    invoke-virtual {p0, p1, p2}, LD3/E$b;->a(Ll3/i;Ll3/i$b;)Ll3/i;

    move-result-object p1

    return-object p1
.end method
