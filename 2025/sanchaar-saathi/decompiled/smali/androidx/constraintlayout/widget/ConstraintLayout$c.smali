.class public Landroidx/constraintlayout/widget/ConstraintLayout$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final synthetic h:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/b;

    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/b;->h(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final b(LA/e;LB/b$a;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, LA/e;->M()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    invoke-virtual/range {p1 .. p1}, LA/e;->U()Z

    move-result v3

    if-nez v3, :cond_1

    iput v5, v2, LB/b$a;->e:I

    iput v5, v2, LB/b$a;->f:I

    iput v5, v2, LB/b$a;->g:I

    return-void

    :cond_1
    iget-object v3, v2, LB/b$a;->a:LA/e$b;

    iget-object v4, v2, LB/b$a;->b:LA/e$b;

    iget v6, v2, LB/b$a;->c:I

    iget v7, v2, LB/b$a;->d:I

    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->b:I

    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->c:I

    add-int/2addr v8, v9

    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->d:I

    invoke-virtual/range {p1 .. p1}, LA/e;->o()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    sget-object v11, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v12, v11, v12

    const/4 v13, 0x4

    const/4 v15, 0x3

    const/4 v5, 0x2

    const/4 v14, 0x1

    if-eq v12, v14, :cond_a

    if-eq v12, v5, :cond_9

    if-eq v12, v15, :cond_8

    if-eq v12, v13, :cond_2

    const/4 v6, 0x0

    :goto_0
    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_2
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->f:I

    const/4 v12, -0x2

    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    iget v9, v1, LA/e;->l:I

    if-ne v9, v14, :cond_3

    move v9, v14

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    iget-object v12, v1, LA/e;->h:[I

    const/16 v16, 0x0

    aput v16, v12, v5

    iget-boolean v13, v2, LB/b$a;->j:Z

    if-eqz v13, :cond_7

    if-eqz v9, :cond_5

    aget v13, v12, v15

    if-eqz v13, :cond_5

    aget v12, v12, v16

    invoke-virtual/range {p1 .. p1}, LA/e;->N()I

    move-result v13

    if-ne v12, v13, :cond_4

    goto :goto_2

    :cond_4
    move v12, v14

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v12, 0x0

    :goto_3
    if-eqz v9, :cond_6

    if-eqz v12, :cond_7

    :cond_6
    invoke-virtual/range {p1 .. p1}, LA/e;->N()I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_0

    :cond_7
    :goto_4
    move v9, v14

    goto :goto_5

    :cond_8
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->f:I

    invoke-virtual/range {p1 .. p1}, LA/e;->x()I

    move-result v12

    add-int/2addr v9, v12

    const/4 v12, -0x1

    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    iget-object v9, v1, LA/e;->h:[I

    aput v12, v9, v5

    goto :goto_0

    :cond_9
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->f:I

    const/4 v12, -0x2

    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    iget-object v9, v1, LA/e;->h:[I

    aput v12, v9, v5

    goto :goto_4

    :cond_a
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    iget-object v9, v1, LA/e;->h:[I

    aput v6, v9, v5

    move v6, v12

    goto :goto_0

    :goto_5
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v14, :cond_13

    if-eq v11, v5, :cond_12

    if-eq v11, v15, :cond_11

    const/4 v7, 0x4

    if-eq v11, v7, :cond_b

    const/4 v7, 0x0

    const/4 v11, 0x0

    goto/16 :goto_c

    :cond_b
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->g:I

    const/4 v11, -0x2

    invoke-static {v7, v8, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    iget v8, v1, LA/e;->m:I

    if-ne v8, v14, :cond_c

    move v8, v14

    goto :goto_6

    :cond_c
    const/4 v8, 0x0

    :goto_6
    iget-object v11, v1, LA/e;->h:[I

    const/4 v12, 0x0

    aput v12, v11, v15

    iget-boolean v12, v2, LB/b$a;->j:Z

    if-eqz v12, :cond_10

    if-eqz v8, :cond_e

    aget v12, v11, v5

    if-eqz v12, :cond_e

    aget v11, v11, v14

    invoke-virtual/range {p1 .. p1}, LA/e;->t()I

    move-result v12

    if-ne v11, v12, :cond_d

    goto :goto_7

    :cond_d
    move v11, v14

    goto :goto_8

    :cond_e
    :goto_7
    const/4 v11, 0x0

    :goto_8
    if-eqz v8, :cond_f

    if-eqz v11, :cond_10

    :cond_f
    invoke-virtual/range {p1 .. p1}, LA/e;->t()I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :goto_9
    move v11, v7

    :goto_a
    const/4 v7, 0x0

    goto :goto_c

    :cond_10
    :goto_b
    move v11, v7

    move v7, v14

    goto :goto_c

    :cond_11
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->g:I

    invoke-virtual/range {p1 .. p1}, LA/e;->L()I

    move-result v11

    add-int/2addr v8, v11

    const/4 v11, -0x1

    invoke-static {v7, v8, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    iget-object v8, v1, LA/e;->h:[I

    aput v11, v8, v15

    goto :goto_9

    :cond_12
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->g:I

    const/4 v11, -0x2

    invoke-static {v7, v8, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    iget-object v8, v1, LA/e;->h:[I

    aput v11, v8, v15

    goto :goto_b

    :cond_13
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    iget-object v8, v1, LA/e;->h:[I

    aput v7, v8, v15

    goto :goto_a

    :goto_c
    sget-object v8, LA/e$b;->g:LA/e$b;

    if-ne v3, v8, :cond_14

    move v12, v14

    goto :goto_d

    :cond_14
    const/4 v12, 0x0

    :goto_d
    if-ne v4, v8, :cond_15

    move v8, v14

    goto :goto_e

    :cond_15
    const/4 v8, 0x0

    :goto_e
    sget-object v13, LA/e$b;->h:LA/e$b;

    if-eq v4, v13, :cond_17

    sget-object v15, LA/e$b;->e:LA/e$b;

    if-ne v4, v15, :cond_16

    goto :goto_f

    :cond_16
    const/4 v4, 0x0

    goto :goto_10

    :cond_17
    :goto_f
    move v4, v14

    :goto_10
    if-eq v3, v13, :cond_19

    sget-object v13, LA/e$b;->e:LA/e$b;

    if-ne v3, v13, :cond_18

    goto :goto_11

    :cond_18
    const/4 v3, 0x0

    goto :goto_12

    :cond_19
    :goto_11
    move v3, v14

    :goto_12
    const/4 v13, 0x0

    if-eqz v12, :cond_1a

    iget v15, v1, LA/e;->Q:F

    cmpl-float v15, v15, v13

    if-lez v15, :cond_1a

    move v15, v14

    goto :goto_13

    :cond_1a
    const/4 v15, 0x0

    :goto_13
    if-eqz v8, :cond_1b

    iget v14, v1, LA/e;->Q:F

    cmpl-float v13, v14, v13

    if-lez v13, :cond_1b

    const/4 v13, 0x1

    goto :goto_14

    :cond_1b
    const/4 v13, 0x0

    :goto_14
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget-boolean v5, v2, LB/b$a;->j:Z

    if-nez v5, :cond_1d

    if-eqz v12, :cond_1d

    iget v5, v1, LA/e;->l:I

    if-nez v5, :cond_1d

    if-eqz v8, :cond_1d

    iget v5, v1, LA/e;->m:I

    if-eqz v5, :cond_1c

    goto :goto_15

    :cond_1c
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v16, 0x0

    goto/16 :goto_1d

    :cond_1d
    :goto_15
    invoke-virtual {v10, v6, v11}, Landroid/view/View;->measure(II)V

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v12

    if-eqz v9, :cond_1e

    iget-object v9, v1, LA/e;->h:[I

    const/16 v16, 0x0

    aput v5, v9, v16

    const/16 v18, 0x2

    aput v8, v9, v18

    goto :goto_16

    :cond_1e
    const/16 v16, 0x0

    const/16 v18, 0x2

    iget-object v9, v1, LA/e;->h:[I

    aput v16, v9, v16

    aput v16, v9, v18

    :goto_16
    if-eqz v7, :cond_1f

    iget-object v7, v1, LA/e;->h:[I

    const/4 v9, 0x1

    aput v8, v7, v9

    const/16 v17, 0x3

    aput v5, v7, v17

    goto :goto_17

    :cond_1f
    const/4 v9, 0x1

    const/16 v17, 0x3

    iget-object v7, v1, LA/e;->h:[I

    aput v16, v7, v9

    aput v16, v7, v17

    :goto_17
    iget v7, v1, LA/e;->o:I

    if-lez v7, :cond_20

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_18

    :cond_20
    move v7, v5

    :goto_18
    iget v9, v1, LA/e;->p:I

    if-lez v9, :cond_21

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    :cond_21
    iget v9, v1, LA/e;->r:I

    if-lez v9, :cond_22

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_19

    :cond_22
    move v9, v8

    :goto_19
    iget v0, v1, LA/e;->s:I

    if-lez v0, :cond_23

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_23
    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz v15, :cond_24

    if-eqz v4, :cond_24

    iget v3, v1, LA/e;->Q:F

    int-to-float v4, v9

    mul-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v7, v0

    goto :goto_1a

    :cond_24
    if-eqz v13, :cond_25

    if-eqz v3, :cond_25

    iget v3, v1, LA/e;->Q:F

    int-to-float v4, v7

    div-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v9, v0

    :cond_25
    :goto_1a
    if-ne v5, v7, :cond_27

    if-eq v8, v9, :cond_26

    goto :goto_1c

    :cond_26
    move v0, v7

    move v3, v9

    move v4, v12

    :goto_1b
    const/4 v5, -0x1

    goto :goto_1d

    :cond_27
    :goto_1c
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_28

    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :cond_28
    if-eq v8, v9, :cond_29

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    :cond_29
    invoke-virtual {v10, v6, v11}, Landroid/view/View;->measure(II)V

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v4

    goto :goto_1b

    :goto_1d
    if-eq v4, v5, :cond_2a

    const/4 v5, 0x1

    goto :goto_1e

    :cond_2a
    move/from16 v5, v16

    :goto_1e
    iget v6, v2, LB/b$a;->c:I

    if-ne v0, v6, :cond_2c

    iget v6, v2, LB/b$a;->d:I

    if-eq v3, v6, :cond_2b

    goto :goto_1f

    :cond_2b
    move/from16 v6, v16

    goto :goto_20

    :cond_2c
    :goto_1f
    const/4 v6, 0x1

    :goto_20
    iput-boolean v6, v2, LB/b$a;->i:Z

    iget-boolean v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Y:Z

    if-eqz v6, :cond_2d

    const/4 v9, 0x1

    goto :goto_21

    :cond_2d
    move v9, v5

    :goto_21
    if-eqz v9, :cond_2e

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2e

    invoke-virtual/range {p1 .. p1}, LA/e;->l()I

    move-result v1

    if-eq v1, v4, :cond_2e

    const/4 v1, 0x1

    iput-boolean v1, v2, LB/b$a;->i:Z

    :cond_2e
    iput v0, v2, LB/b$a;->e:I

    iput v3, v2, LB/b$a;->f:I

    iput-boolean v9, v2, LB/b$a;->h:Z

    iput v4, v2, LB/b$a;->g:I

    return-void
.end method

.method public c(IIIIII)V
    .locals 0

    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->b:I

    iput p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->c:I

    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->d:I

    iput p6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->e:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->f:I

    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->g:I

    return-void
.end method
