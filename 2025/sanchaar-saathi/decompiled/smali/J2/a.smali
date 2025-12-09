.class public final synthetic LJ2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR1/b;


# instance fields
.field public final synthetic a:LJ2/d;

.field public final synthetic b:Lv2/c;

.field public final synthetic c:LY2/j$d;


# direct methods
.method public synthetic constructor <init>(LJ2/d;Lv2/c;LY2/j$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ2/a;->a:LJ2/d;

    iput-object p2, p0, LJ2/a;->b:Lv2/c;

    iput-object p3, p0, LJ2/a;->c:LY2/j$d;

    return-void
.end method


# virtual methods
.method public final a(LR1/f;)V
    .locals 3

    iget-object v0, p0, LJ2/a;->a:LJ2/d;

    iget-object v1, p0, LJ2/a;->b:Lv2/c;

    iget-object v2, p0, LJ2/a;->c:LY2/j$d;

    invoke-static {v0, v1, v2, p1}, LJ2/d;->a(LJ2/d;Lv2/c;LY2/j$d;LR1/f;)V

    return-void
.end method
