.class public final synthetic Li0/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR/a;


# instance fields
.field public final synthetic a:Li0/I;


# direct methods
.method public synthetic constructor <init>(Li0/I;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li0/D;->a:Li0/I;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Li0/D;->a:Li0/I;

    check-cast p1, Landroid/content/res/Configuration;

    invoke-static {v0, p1}, Li0/I;->e(Li0/I;Landroid/content/res/Configuration;)V

    return-void
.end method
