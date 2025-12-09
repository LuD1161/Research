.class public final Lz1/x;
.super Lz1/z;
.source "SourceFile"


# instance fields
.field public final synthetic c:Landroid/content/Intent;

.field public final synthetic d:Landroid/app/Activity;

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/app/Activity;I)V
    .locals 0

    iput-object p1, p0, Lz1/x;->c:Landroid/content/Intent;

    iput-object p2, p0, Lz1/x;->d:Landroid/app/Activity;

    iput p3, p0, Lz1/x;->e:I

    invoke-direct {p0}, Lz1/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lz1/x;->c:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz1/x;->d:Landroid/app/Activity;

    iget v2, p0, Lz1/x;->e:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
