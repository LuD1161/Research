.class public Ln2/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln2/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ln2/e;


# direct methods
.method public constructor <init>(Ln2/e;)V
    .locals 0

    iput-object p1, p0, Ln2/e$a;->c:Ln2/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    if-gez p3, :cond_0

    iget-object p1, p0, Ln2/e$a;->c:Ln2/e;

    invoke-static {p1}, Ln2/e;->a(Ln2/e;)Lp/Q;

    move-result-object p1

    invoke-virtual {p1}, Lp/Q;->v()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ln2/e$a;->c:Ln2/e;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Ln2/e$a;->c:Ln2/e;

    invoke-static {v0, p1}, Ln2/e;->b(Ln2/e;Ljava/lang/Object;)V

    iget-object p1, p0, Ln2/e$a;->c:Ln2/e;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    if-gez p3, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    goto :goto_3

    :cond_2
    :goto_2
    iget-object p1, p0, Ln2/e$a;->c:Ln2/e;

    invoke-static {p1}, Ln2/e;->a(Ln2/e;)Lp/Q;

    move-result-object p1

    invoke-virtual {p1}, Lp/Q;->y()Landroid/view/View;

    move-result-object p2

    iget-object p1, p0, Ln2/e$a;->c:Ln2/e;

    invoke-static {p1}, Ln2/e;->a(Ln2/e;)Lp/Q;

    move-result-object p1

    invoke-virtual {p1}, Lp/Q;->x()I

    move-result p3

    iget-object p1, p0, Ln2/e$a;->c:Ln2/e;

    invoke-static {p1}, Ln2/e;->a(Ln2/e;)Lp/Q;

    move-result-object p1

    invoke-virtual {p1}, Lp/Q;->w()J

    move-result-wide p4

    goto :goto_1

    :goto_3
    iget-object p1, p0, Ln2/e$a;->c:Ln2/e;

    invoke-static {p1}, Ln2/e;->a(Ln2/e;)Lp/Q;

    move-result-object p1

    invoke-virtual {p1}, Lp/Q;->g()Landroid/widget/ListView;

    move-result-object v1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_3
    iget-object p1, p0, Ln2/e$a;->c:Ln2/e;

    invoke-static {p1}, Ln2/e;->a(Ln2/e;)Lp/Q;

    move-result-object p1

    invoke-virtual {p1}, Lp/Q;->dismiss()V

    return-void
.end method
